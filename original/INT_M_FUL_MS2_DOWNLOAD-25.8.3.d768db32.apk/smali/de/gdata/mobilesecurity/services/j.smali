.class Lde/gdata/mobilesecurity/services/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lde/gdata/mobilesecurity/services/WatcherService;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/graphics/drawable/Drawable;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 954
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/j;->d:Lde/gdata/mobilesecurity/services/WatcherService;

    iput-object p2, p0, Lde/gdata/mobilesecurity/services/j;->a:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lde/gdata/mobilesecurity/services/j;->b:I

    iput-object p4, p0, Lde/gdata/mobilesecurity/services/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 957
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/j;->d:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 958
    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 960
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 961
    const v0, 0x7f0b017d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 962
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/j;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 963
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 966
    :cond_0
    const v0, 0x7f0b017e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 967
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/j;->d:Lde/gdata/mobilesecurity/services/WatcherService;

    iget v3, p0, Lde/gdata/mobilesecurity/services/j;->b:I

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/j;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    new-instance v0, Landroid/widget/Toast;

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/j;->d:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 971
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 972
    const/16 v1, 0x77

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 973
    invoke-virtual {v0, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 974
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 975
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 976
    return-void
.end method
