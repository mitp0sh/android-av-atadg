.class Lcom/viewpagerindicator/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/viewpagerindicator/h;->b:Lcom/viewpagerindicator/TabPageIndicator;

    iput-object p2, p0, Lcom/viewpagerindicator/h;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/viewpagerindicator/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/h;->b:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TabPageIndicator;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/viewpagerindicator/h;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 175
    iget-object v1, p0, Lcom/viewpagerindicator/h;->b:Lcom/viewpagerindicator/TabPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viewpagerindicator/TabPageIndicator;->smoothScrollTo(II)V

    .line 176
    iget-object v0, p0, Lcom/viewpagerindicator/h;->b:Lcom/viewpagerindicator/TabPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Lcom/viewpagerindicator/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 177
    return-void
.end method
