.class public Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    .line 356
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 353
    const v0, 0xffef

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->a:I

    .line 357
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->c:Landroid/view/LayoutInflater;

    .line 358
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 388
    if-nez p2, :cond_0

    .line 389
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 393
    :cond_0
    const v0, 0x7f0b01c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 394
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_f

    .line 395
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 396
    const v2, 0x7f0b0151

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 398
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->isNoBusinessFilter(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 399
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 400
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 401
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 402
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 404
    new-instance v3, Lde/gdata/mobilesecurity/activities/filter/j;

    invoke-direct {v3, p0, p1, v2, v1}, Lde/gdata/mobilesecurity/activities/filter/j;-><init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;ILandroid/widget/CheckBox;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->isNoBusinessFilter(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/k;

    invoke-direct {v2, p0, v1}, Lde/gdata/mobilesecurity/activities/filter/k;-><init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    :cond_1
    const v0, 0x7f0b01d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 440
    const v2, 0x7f0b01d0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 441
    const v3, 0x7f0b01d2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 442
    const v4, 0x7f0b01d5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 443
    const v5, 0x7f0b01c6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 444
    const v6, 0x7f0b01d4

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 445
    const v7, 0x7f0b01d3

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 446
    const v8, 0x7f0b01d7

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 448
    const v9, 0x7f0b01d8

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 450
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsIncoming()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getLocationId()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsOutgoing()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsSms()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isAllowAnonymousCalls()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIncludesTB()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 456
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    const/4 v0, 0x2

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v6, 0x8

    invoke-virtual {v9, v0, v2, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 462
    :goto_6
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    const v0, 0x7f0b01c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 463
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->isNoBusinessFilter(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->isNoBusinessFilter(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 467
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActive()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 469
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    const v2, 0x7f0d0096

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :goto_8
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/l;

    invoke-direct {v2, p0, v1}, Lde/gdata/mobilesecurity/activities/filter/l;-><init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsActivated()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 495
    const v0, 0x7f0b01c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 496
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    const v0, 0x7f0b01d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :cond_2
    const-string v0, ""

    .line 503
    const/4 v2, 0x0

    .line 504
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_4

    .line 505
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    const v3, 0x7f0d03ad

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    :cond_4
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v0

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    .line 508
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 509
    add-int/lit8 v0, v2, 0x1

    .line 510
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_12

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    move-object v3, v2

    move v2, v0

    .line 513
    goto :goto_9

    .line 398
    :cond_5
    const/16 v3, 0x8

    goto/16 :goto_0

    .line 450
    :cond_6
    const/16 v10, 0x8

    goto/16 :goto_1

    .line 451
    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_2

    .line 452
    :cond_8
    const/16 v0, 0x8

    goto/16 :goto_3

    .line 453
    :cond_9
    const/16 v0, 0x8

    goto/16 :goto_4

    .line 454
    :cond_a
    const/16 v0, 0x8

    goto/16 :goto_5

    .line 459
    :cond_b
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 464
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 471
    :cond_d
    const-string v0, ""

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 514
    :cond_e
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 517
    const/4 v0, 0x0

    const/4 v2, 0x0

    const v3, 0x7f02007f

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 518
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    const v2, 0x7f0d0185

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :goto_b
    const v0, 0x7f0b01cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getStringStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    const v0, 0x7f0b01ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getStringEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsActivated()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 529
    const v0, 0x7f0b01ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getSchedule()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getWeekdaysAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 533
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 535
    invoke-static {p2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 536
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isFullDay()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 537
    const v0, 0x7f0b01cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    :cond_f
    :goto_c
    return-object p2

    .line 520
    :cond_10
    const/4 v0, 0x0

    const/4 v2, 0x0

    const v3, 0x7f020095

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 521
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    const v2, 0x7f0d0555

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 539
    :cond_11
    const v0, 0x7f0b01cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    :cond_12
    move-object v2, v3

    goto/16 :goto_a
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->clear()V

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 373
    if-eqz p1, :cond_0

    .line 374
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 375
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->add(Ljava/lang/Object;)V

    .line 376
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_0
    return-void
.end method
