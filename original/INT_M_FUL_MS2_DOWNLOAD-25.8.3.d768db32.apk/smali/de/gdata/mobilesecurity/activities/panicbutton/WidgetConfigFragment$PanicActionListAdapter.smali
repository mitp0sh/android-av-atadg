.class public Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    .line 510
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 511
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 516
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->i(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getAllPanicActionsById(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 519
    :cond_0
    return v0
.end method

.method public getItem(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;
    .locals 3

    .prologue
    .line 524
    const/4 v0, 0x0

    .line 525
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->i(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getAllPanicActionsById(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    .line 528
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->getItem(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 534
    .line 536
    if-nez p2, :cond_0

    .line 539
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 540
    const v1, 0x7f03007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 544
    :cond_0
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->getItem(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v9

    .line 545
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0, v9}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    .line 547
    if-eqz v9, :cond_5

    .line 549
    const/4 v0, 0x0

    .line 550
    const/4 v1, 0x0

    .line 551
    const/4 v2, 0x0

    .line 552
    const/4 v3, 0x0

    .line 554
    iget v4, v9, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    const/4 v0, 0x1

    move v4, v0

    .line 555
    :goto_0
    iget v0, v9, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    const/4 v0, 0x1

    move v5, v0

    .line 556
    :goto_1
    iget v0, v9, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    move v6, v0

    .line 557
    :goto_2
    iget v0, v9, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    if-nez v0, :cond_9

    const/4 v0, 0x1

    move v7, v0

    .line 559
    :goto_3
    const v0, 0x7f0b01d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 560
    const v1, 0x7f0b02e8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 561
    const v2, 0x7f0b01d4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 562
    const v3, 0x7f0b01d2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 564
    if-eqz v4, :cond_a

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    if-eqz v5, :cond_b

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    if-eqz v6, :cond_c

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    if-eqz v7, :cond_d

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    if-nez v6, :cond_1

    if-eqz v4, :cond_e

    .line 569
    :cond_1
    const v0, 0x7f0b02ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 573
    :goto_8
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/ab;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/ab;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    const v0, 0x7f0b01c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 580
    const v1, 0x7f0b02e9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 581
    const v2, 0x7f0b02ec

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 582
    const v3, 0x7f0b02eb

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 583
    const v4, 0x7f0b02ee

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 585
    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {v9}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/ac;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/ac;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    :cond_2
    if-eqz v2, :cond_3

    .line 601
    invoke-virtual {v9}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    :cond_3
    if-eqz v4, :cond_4

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v9}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->getNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :cond_4
    if-eqz v3, :cond_5

    .line 608
    invoke-virtual {v9}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    :cond_5
    return-object p2

    :cond_6
    move v4, v0

    .line 554
    goto/16 :goto_0

    :cond_7
    move v5, v1

    .line 555
    goto/16 :goto_1

    :cond_8
    move v6, v2

    .line 556
    goto/16 :goto_2

    :cond_9
    move v7, v3

    .line 557
    goto/16 :goto_3

    .line 564
    :cond_a
    const/16 v8, 0x8

    goto/16 :goto_4

    .line 565
    :cond_b
    const/16 v0, 0x8

    goto/16 :goto_5

    .line 566
    :cond_c
    const/16 v0, 0x8

    goto/16 :goto_6

    .line 567
    :cond_d
    const/16 v0, 0x8

    goto/16 :goto_7

    .line 571
    :cond_e
    const v0, 0x7f0b02ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8
.end method
