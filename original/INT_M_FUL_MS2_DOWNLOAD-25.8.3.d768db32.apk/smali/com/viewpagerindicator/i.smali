.class Lcom/viewpagerindicator/i;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicator;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 333
    iput-object p1, p0, Lcom/viewpagerindicator/i;->a:Lcom/viewpagerindicator/TabPageIndicator;

    .line 334
    const/4 v0, 0x0

    sget v1, Lcom/viewpagerindicator/R$attr;->vpiTabPageIndicatorStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 335
    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/i;I)I
    .locals 0

    .prologue
    .line 330
    iput p1, p0, Lcom/viewpagerindicator/i;->b:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/viewpagerindicator/i;->b:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 342
    iget-object v0, p0, Lcom/viewpagerindicator/i;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->c(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/viewpagerindicator/i;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/i;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicator;->c(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/viewpagerindicator/i;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->c(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 346
    :cond_0
    return-void
.end method
