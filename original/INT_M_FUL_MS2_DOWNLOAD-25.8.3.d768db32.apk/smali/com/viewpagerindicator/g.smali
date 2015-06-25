.class Lcom/viewpagerindicator/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/viewpagerindicator/g;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 80
    check-cast p1, Lcom/viewpagerindicator/i;

    .line 81
    iget-object v0, p0, Lcom/viewpagerindicator/g;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->a(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 82
    invoke-virtual {p1}, Lcom/viewpagerindicator/i;->a()I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/viewpagerindicator/g;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v2}, Lcom/viewpagerindicator/TabPageIndicator;->a(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 84
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/g;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->b(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/viewpagerindicator/g;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->b(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;->onTabReselected(I)V

    .line 87
    :cond_0
    return-void
.end method
