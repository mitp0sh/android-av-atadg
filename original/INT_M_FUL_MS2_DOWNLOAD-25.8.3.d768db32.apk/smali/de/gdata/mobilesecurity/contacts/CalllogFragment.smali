.class public Lde/gdata/mobilesecurity/contacts/CalllogFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final FILTER_KEY:Ljava/lang/String; = "filter"


# instance fields
.field private CALLLOG_PROJECTION:[Ljava/lang/String;

.field private isSingleChoiceList:Z

.field public mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field mProgressContainer:Landroid/view/View;

.field private mUnknownContact:Ljava/lang/String;

.field m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

.field private m_filter:Ljava/lang/String;

.field m_selectedListener:Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;

.field private m_suppressUpdates:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_filter:Ljava/lang/String;

    .line 50
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->isSingleChoiceList:Z

    .line 251
    new-instance v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    invoke-direct {v0, p0, v1, v1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;-><init>(Lde/gdata/mobilesecurity/contacts/CalllogFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    .line 271
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->CALLLOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkAll()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->clear()V

    .line 379
    return-void
.end method

.method public getCheckedEntries()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 382
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->getCheckedNumbers()Ljava/util/Map;

    move-result-object v0

    .line 383
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 387
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Long;

    .line 388
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 389
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 390
    iget-object v8, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mUnknownContact:Ljava/lang/String;

    .line 391
    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 394
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 399
    :goto_2
    new-instance v1, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v6, v0, v4, v5}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    :cond_0
    return-object v9

    :cond_1
    move-object v0, v8

    goto :goto_1

    :cond_2
    move-object v0, v8

    goto :goto_2
.end method

.method public getOnItemSelectedListener()Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_selectedListener:Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 291
    const v0, 0x7f0d01d5

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mUnknownContact:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getCheckedEntries()Ljava/util/ArrayList;

    move-result-object v0

    .line 293
    new-instance v1, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;-><init>(Lde/gdata/mobilesecurity/contacts/CalllogFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    .line 294
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->setCheckedNumbers(Ljava/util/ArrayList;)V

    .line 295
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    const-string v1, "is_single_choice"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const-string v1, "is_single_choice"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->isSingleChoiceList:Z

    .line 300
    :cond_0
    return-void
.end method

.method protected onCheckedNumbersChanged()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_selectedListener:Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_suppressUpdates:Z

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->getCheckedNumbers()Ljava/util/Map;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 258
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_selectedListener:Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;

    invoke-interface {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;->onNothingSelected()V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_selectedListener:Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;->onNumberSelected(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 334
    .line 337
    const-string v4, "number like ? and number != \'-2\'"

    .line 338
    new-array v5, v1, [Ljava/lang/String;

    const-string v0, "%%%s%%"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_filter:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .line 340
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->CALLLOG_PROJECTION:[Ljava/lang/String;

    const-string v6, "date DESC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 54
    const v0, 0xff0001

    .line 56
    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 59
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mList:Landroid/widget/ListView;

    .line 60
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mListContainer:Landroid/view/View;

    .line 61
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mProgressContainer:Landroid/view/View;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mListShown:Z

    .line 64
    const v0, 0x7f0b032c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const v0, 0x7f0b032d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 276
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 277
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;

    .line 279
    iget-boolean v1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->isSingleChoiceList:Z

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->uncheckAll()V

    .line 283
    :cond_0
    iget-object v1, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    return-void

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 367
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->setListShown(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 375
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 305
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->setListShown(Z)V

    .line 307
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/contacts/CalllogFragment$1;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$1;-><init>(Lde/gdata/mobilesecurity/contacts/CalllogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 317
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 318
    return-void
.end method

.method randomDate()J
    .locals 4

    .prologue
    .line 356
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    sub-long v0, v2, v0

    .line 359
    return-wide v0
.end method

.method randomNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 348
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 349
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCheckedEntries(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->setCheckedNumbers(Ljava/util/ArrayList;)V

    .line 406
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const-string v0, "\\+?\\d*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->clear()V

    .line 324
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_filter:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->setListShown(ZZ)V

    .line 94
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 71
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mListShown:Z

    if-ne v0, p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mListShown:Z

    .line 75
    if-eqz p1, :cond_2

    .line 76
    if-eqz p2, :cond_1

    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_2
    if-eqz p2, :cond_3

    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->mListContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->setListShown(ZZ)V

    .line 98
    return-void
.end method

.method public setOnItemSelectedListener(Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_selectedListener:Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;

    .line 269
    return-void
.end method

.method public uncheckAll()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_suppressUpdates:Z

    .line 414
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;

    # getter for: Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->m_checkedNumbers:Ljava/util/Map;
    invoke-static {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;->access$000(Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 415
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->m_suppressUpdates:Z

    .line 417
    return-void
.end method
