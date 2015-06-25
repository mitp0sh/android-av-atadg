.class Lde/gdata/mobilesecurity/activities/logs/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/view/ViewTreeObserver;

.field final synthetic e:Ljava/util/HashMap;

.field final synthetic f:Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;

.field final synthetic g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;IILandroid/view/ViewTreeObserver;Ljava/util/HashMap;Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/c;->a:Landroid/view/View;

    iput p3, p0, Lde/gdata/mobilesecurity/activities/logs/c;->b:I

    iput p4, p0, Lde/gdata/mobilesecurity/activities/logs/c;->c:I

    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/logs/c;->d:Landroid/view/ViewTreeObserver;

    iput-object p6, p0, Lde/gdata/mobilesecurity/activities/logs/c;->e:Ljava/util/HashMap;

    iput-object p7, p0, Lde/gdata/mobilesecurity/activities/logs/c;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 378
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Z)Z

    .line 380
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 381
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/c;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 383
    sub-int v0, v2, v0

    .line 384
    iget v2, p0, Lde/gdata/mobilesecurity/activities/logs/c;->b:I

    iget v3, p0, Lde/gdata/mobilesecurity/activities/logs/c;->c:I

    sub-int/2addr v2, v3

    .line 385
    sub-int v0, v2, v0

    .line 387
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iget v4, p0, Lde/gdata/mobilesecurity/activities/logs/c;->c:I

    iget v5, p0, Lde/gdata/mobilesecurity/activities/logs/c;->b:I

    invoke-static {v3, v4, v5, v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;IIIZ)[I

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;[I)[I

    .line 389
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 390
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->c:I

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)[I

    move-result-object v3

    aget v3, v3, v1

    add-int v4, v0, v3

    .line 392
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 393
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getFirstVisiblePosition()I

    move-result v3

    .line 394
    sub-int/2addr v2, v4

    .line 397
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildCount()I

    move-result v5

    move v4, v3

    move v3, v2

    move v2, v1

    .line 398
    :goto_0
    if-ge v2, v5, :cond_0

    .line 399
    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v6, v2}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 400
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v6, v7, v6

    .line 401
    sub-int v7, v3, v6

    if-lez v7, :cond_0

    .line 402
    add-int/lit8 v4, v4, 0x1

    .line 403
    sub-int/2addr v3, v6

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    :cond_0
    if-lez v2, :cond_1

    move v0, v1

    .line 413
    :cond_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setSelectionFromTop(II)V

    .line 415
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->requestLayout()V

    .line 510
    :goto_1
    return v1

    .line 420
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Z)Z

    .line 421
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->d:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 423
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)[I

    move-result-object v0

    aget v5, v0, v1

    .line 424
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)[I

    move-result-object v0

    aget v2, v0, v3

    .line 426
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/logs/c;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 427
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildCount()I

    move-result v7

    move v4, v1

    .line 428
    :goto_2
    if-ge v4, v7, :cond_7

    .line 429
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 430
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 431
    if-eqz v0, :cond_5

    .line 436
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 437
    aget v9, v0, v1

    invoke-virtual {v8, v9}, Landroid/view/View;->setTop(I)V

    .line 438
    aget v0, v0, v3

    invoke-virtual {v8, v0}, Landroid/view/View;->setBottom(I)V

    .line 442
    :cond_3
    invoke-static {v8, v1}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 428
    :cond_4
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 448
    :cond_5
    if-le v4, v6, :cond_6

    move v0, v2

    .line 449
    :goto_4
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 450
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v8, v9}, Landroid/view/View;->setTop(I)V

    .line 451
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v0, v9

    invoke-virtual {v8, v0}, Landroid/view/View;->setBottom(I)V

    goto :goto_3

    .line 448
    :cond_6
    neg-int v0, v5

    goto :goto_4

    .line 458
    :cond_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->a:Landroid/view/View;

    const v4, 0x7f0b023d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 460
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 462
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 463
    :goto_5
    if-ge v4, v7, :cond_a

    .line 464
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 465
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->a:Landroid/view/View;

    if-eq v10, v0, :cond_8

    .line 466
    if-le v4, v6, :cond_9

    neg-int v0, v2

    int-to-float v0, v0

    .line 467
    :goto_6
    iget-object v11, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v11, v10, v0, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    .line 466
    :cond_9
    int-to-float v0, v5

    goto :goto_6

    .line 472
    :cond_a
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/logs/c;->a:Landroid/view/View;

    int-to-float v5, v5

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v0, v4, v5, v2}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v8, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setClickable(Z)V

    .line 482
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 483
    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 484
    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/d;

    invoke-direct {v1, p0, v8}, Lde/gdata/mobilesecurity/activities/logs/d;-><init>(Lde/gdata/mobilesecurity/activities/logs/c;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 501
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_7
    move v1, v3

    .line 510
    goto/16 :goto_1

    .line 504
    :cond_b
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->a:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/c;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->setExpanded(Z)V

    goto :goto_7

    .line 475
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
