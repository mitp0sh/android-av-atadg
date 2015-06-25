.class Lde/gdata/mobilesecurity/activities/browser/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/d;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/d;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->e(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/d;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->f(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 200
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/d;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;Z)Z

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/d;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->f(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 203
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/d;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;Z)Z

    goto :goto_0
.end method
