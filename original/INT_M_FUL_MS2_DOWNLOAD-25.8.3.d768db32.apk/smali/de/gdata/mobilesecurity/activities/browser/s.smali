.class Lde/gdata/mobilesecurity/activities/browser/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/s;->d:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    iput p2, p0, Lde/gdata/mobilesecurity/activities/browser/s;->a:I

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/browser/s;->b:Ljava/lang/String;

    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/browser/s;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 515
    iget v0, p0, Lde/gdata/mobilesecurity/activities/browser/s;->a:I

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/s;->c:Ljava/lang/String;

    const/16 v3, 0x6a

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/browser/s;->d:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-static {v4}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->a(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;)I

    move-result v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/browser/s;->d:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-static {v5}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;)Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->a(ILjava/lang/String;Ljava/lang/String;IILde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;)Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/s;->d:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;)Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 519
    return-void
.end method
