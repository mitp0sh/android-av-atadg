.class Landroid/support/v7/internal/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;Landroid/support/v7/internal/widget/o;)V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/s;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 610
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 568
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->dismissPopup()Z

    .line 569
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/r;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 570
    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/r;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/r;->e()Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 571
    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/r;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/r;->e()Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 574
    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 577
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z

    .line 578
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->g(Landroid/support/v7/internal/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    goto :goto_0

    .line 580
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 600
    invoke-direct {p0}, Landroid/support/v7/internal/widget/s;->a()V

    .line 601
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 604
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/r;

    .line 537
    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/r;->getItemViewType(I)I

    move-result v0

    .line 538
    packed-switch v0, :pswitch_data_0

    .line 561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 540
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 543
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->dismissPopup()Z

    .line 544
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->d(Landroid/support/v7/internal/widget/ActivityChooserView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    if-lez p3, :cond_0

    .line 547
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/r;->e()Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/r;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    :goto_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/r;->e()Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_0

    .line 555
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 552
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 587
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 588
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/r;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 589
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0, v2}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z

    .line 590
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->g(Landroid/support/v7/internal/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    .line 595
    :cond_0
    return v2

    .line 593
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
