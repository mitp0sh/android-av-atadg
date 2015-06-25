.class Lde/gdata/mobilesecurity/privacy/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# instance fields
.field a:Lde/gdata/mobilesecurity/privacy/ag;

.field b:Landroid/app/Activity;

.field final synthetic c:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/privacy/ag;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/af;->c:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p3, p0, Lde/gdata/mobilesecurity/privacy/af;->a:Lde/gdata/mobilesecurity/privacy/ag;

    .line 492
    iput-object p2, p0, Lde/gdata/mobilesecurity/privacy/af;->b:Landroid/app/Activity;

    .line 493
    return-void
.end method

.method private a(Landroid/support/v7/view/ActionMode;)V
    .locals 10

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 525
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/af;->c:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 526
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/af;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 527
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ag;->getCount()I

    move-result v4

    .line 528
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 529
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 531
    :goto_0
    if-ge v1, v4, :cond_2

    .line 532
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/ag;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 533
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isChecked()Z

    move-result v7

    if-nez v7, :cond_0

    .line 531
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 534
    :cond_0
    iget-object v7, p0, Lde/gdata/mobilesecurity/privacy/af;->c:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-virtual {v7, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->updateContactBeforeDeleting(Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V

    .line 535
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 536
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 538
    :cond_1
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 541
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 542
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    move v1, v2

    .line 544
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 545
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 546
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 544
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v2

    .line 549
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 550
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 551
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    .line 549
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 554
    :cond_4
    array-length v0, v4

    if-lez v0, :cond_5

    .line 555
    invoke-static {}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getPrivateContactsUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id in ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v5, v4

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyUtil;->buildInPlaceholders(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 558
    :cond_5
    array-length v0, v7

    if-lez v0, :cond_6

    .line 559
    invoke-static {}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getPrivateNumbersUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id in ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v7

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyUtil;->buildInPlaceholders(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 563
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/af;->c:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 564
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/af;->c:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Z)Z

    .line 566
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/af;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ag;->notifyDataSetInvalidated()V

    .line 568
    :cond_7
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 513
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x3718

    if-ne v0, v1, :cond_1

    .line 514
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/af;->c:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ag;->notifyDataSetChanged()V

    .line 516
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/af;->c:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 521
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 517
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x3717

    if-ne v0, v1, :cond_0

    .line 518
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/af;->a(Landroid/support/v7/view/ActionMode;)V

    .line 519
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 497
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/support/v7/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    const/16 v0, 0x3717

    const v1, 0x7f0d01c8

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020113

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 501
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 503
    return v3
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/af;->c:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 573
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/af;->c:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ag;->b()V

    .line 575
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ag;->notifyDataSetChanged()V

    .line 578
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method
