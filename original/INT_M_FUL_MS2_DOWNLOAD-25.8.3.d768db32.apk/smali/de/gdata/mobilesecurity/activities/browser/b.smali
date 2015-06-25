.class Lde/gdata/mobilesecurity/activities/browser/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/b;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 177
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/b;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/b;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->d(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/b;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
