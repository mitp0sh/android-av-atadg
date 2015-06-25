.class Lde/gdata/mobilesecurity/activities/browser/a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 141
    invoke-static {p2}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOADING FINISHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 152
    return-void

    .line 143
    :cond_0
    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->c(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->showRejectDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    .line 145
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->d(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOADING STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->verifyUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->verifyDocumentContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->onAccept()V

    .line 134
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/a;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->onReject()V

    goto :goto_0
.end method
