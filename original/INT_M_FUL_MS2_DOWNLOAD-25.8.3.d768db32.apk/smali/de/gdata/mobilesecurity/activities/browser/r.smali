.class Lde/gdata/mobilesecurity/activities/browser/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/r;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/browser/r;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/browser/r;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 602
    const-string v0, ""

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/r;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/r;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    new-instance v0, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/r;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;-><init>(Landroid/content/Context;)V

    .line 606
    new-instance v1, Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;-><init>()V

    .line 608
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/r;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->a(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/r;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->a(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setId(I)V

    .line 610
    :cond_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/r;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setUrl(Ljava/lang/String;)V

    .line 611
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/r;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->b(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setType(I)V

    .line 612
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setDate(Ljava/util/Date;)V

    .line 613
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/r;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setTitle(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->addUrlToDB(Lde/gdata/mobilesecurity/activities/browser/UrlBean;)V

    .line 617
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->close()V

    .line 619
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/r;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->c(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;)Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/browser/r;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->c(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;)Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 622
    :cond_1
    return-void
.end method
