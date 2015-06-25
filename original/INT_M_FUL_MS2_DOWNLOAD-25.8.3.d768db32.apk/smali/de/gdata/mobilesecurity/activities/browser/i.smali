.class Lde/gdata/mobilesecurity/activities/browser/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;I)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/i;->b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    iput p2, p0, Lde/gdata/mobilesecurity/activities/browser/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostHonycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/i;->b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->b(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 85
    :cond_0
    iget v0, p0, Lde/gdata/mobilesecurity/activities/browser/i;->a:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 87
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/i;->b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/browser/i;->a:I

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/i;->b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->a(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/i;->b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->aboutClick(Landroid/webkit/WebView;Landroid/app/Activity;)V

    goto :goto_0

    .line 91
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/i;->b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/browser/i;->a:I

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/i;->b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->settingsClick(Landroid/content/Context;)V

    goto :goto_0

    .line 95
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/i;->b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/browser/i;->a:I

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/i;->b:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->quitClick()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
