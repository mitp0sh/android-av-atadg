.class Lde/gdata/mobilesecurity/activities/browser/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/g;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    const-string v0, "Clicked: back"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/g;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->a(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 58
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostHonycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/g;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->b(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 61
    :cond_0
    return-void
.end method
