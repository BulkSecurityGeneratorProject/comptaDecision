import {Component, OnDestroy, OnInit} from '@angular/core';
import {HttpErrorResponse, HttpHeaders, HttpResponse} from '@angular/common/http';
import {ActivatedRoute, Router} from '@angular/router';
import {Subscription} from 'rxjs';
import {JhiAlertService, JhiEventManager, JhiParseLinks} from 'ng-jhipster';

import {IDeclarationEmployeurAnnuelle} from 'app/shared/model/declaration-employeur-annuelle.model';
import {AccountService} from 'app/core';

import {ITEMS_PER_PAGE} from 'app/shared';
import {DeclarationEmployeurAnnuelleService} from './declaration-employeur-annuelle.service';

@Component({
    selector: 'jhi-declaration-employeur-annuelle',
    templateUrl: './declaration-employeur-annuelle.component.html'
})
export class DeclarationEmployeurAnnuelleComponent implements OnInit, OnDestroy {
    currentAccount: any;
    declarationEmployeurAnnuelles: IDeclarationEmployeurAnnuelle[];
    error: any;
    success: any;
    eventSubscriber: Subscription;
    routeData: any;
    links: any;
    totalItems: any;
    itemsPerPage: any;
    page: any;
    predicate: any;
    previousPage: any;
    reverse: any;

    constructor(
        protected declarationEmployeurAnnuelleService: DeclarationEmployeurAnnuelleService,
        protected parseLinks: JhiParseLinks,
        protected jhiAlertService: JhiAlertService,
        protected accountService: AccountService,
        protected activatedRoute: ActivatedRoute,
        protected router: Router,
        protected eventManager: JhiEventManager
    ) {
        this.itemsPerPage = ITEMS_PER_PAGE;
        this.routeData = this.activatedRoute.data.subscribe(data => {
            this.page = data.pagingParams.page;
            this.previousPage = data.pagingParams.page;
            this.reverse = data.pagingParams.ascending;
            this.predicate = data.pagingParams.predicate;
        });
    }

    loadAll() {
        this.declarationEmployeurAnnuelleService
            .query({
                page: this.page - 1,
                size: this.itemsPerPage,
                sort: this.sort()
            })
            .subscribe(
                (res: HttpResponse<IDeclarationEmployeurAnnuelle[]>) => this.paginateDeclarationEmployeurAnnuelles(res.body, res.headers),
                (res: HttpErrorResponse) => this.onError(res.message)
            );
    }

    loadPage(page: number) {
        if (page !== this.previousPage) {
            this.previousPage = page;
            this.transition();
        }
    }

    transition() {
        this.router.navigate(['/declaration-employeur-annuelle'], {
            queryParams: {
                page: this.page,
                size: this.itemsPerPage,
                sort: this.predicate + ',' + (this.reverse ? 'asc' : 'desc')
            }
        });
        this.loadAll();
    }

    clear() {
        this.page = 0;
        this.router.navigate([
            '/declaration-employeur-annuelle',
            {
                page: this.page,
                sort: this.predicate + ',' + (this.reverse ? 'asc' : 'desc')
            }
        ]);
        this.loadAll();
    }

    ngOnInit() {
        this.loadAll();
        this.accountService.identity().then(account => {
            this.currentAccount = account;
        });
        this.registerChangeInDeclarationEmployeurAnnuelles();
    }

    ngOnDestroy() {
        this.eventManager.destroy(this.eventSubscriber);
    }

    trackId(index: number, item: IDeclarationEmployeurAnnuelle) {
        return item.id;
    }

    registerChangeInDeclarationEmployeurAnnuelles() {
        this.eventSubscriber = this.eventManager.subscribe('declarationEmployeurAnnuelleListModification', response => this.loadAll());
    }

    sort() {
        const result = [this.predicate + ',' + (this.reverse ? 'asc' : 'desc')];
        if (this.predicate !== 'id') {
            result.push('id');
        }
        return result;
    }

    protected paginateDeclarationEmployeurAnnuelles(data: IDeclarationEmployeurAnnuelle[], headers: HttpHeaders) {
        this.links = this.parseLinks.parse(headers.get('link'));
        this.totalItems = parseInt(headers.get('X-Total-Count'), 10);
        this.declarationEmployeurAnnuelles = data;
    }

    protected onError(errorMessage: string) {
        this.jhiAlertService.error(errorMessage, null, null);
    }

    addDeclarationEmployeur(event) {
        const id = event.ficheClientId;
        const annee = event.annee;
        this.router.navigateByUrl(`/declaration-employeur-annuelle/${id}/${annee}/new`);

    }
}
