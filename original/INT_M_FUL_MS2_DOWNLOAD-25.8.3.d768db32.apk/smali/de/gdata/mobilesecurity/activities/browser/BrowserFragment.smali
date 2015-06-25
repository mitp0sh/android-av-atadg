.class public Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/activities/browser/WebVerifiable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ListPopupWindow;

.field private g:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

.field private h:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private i:Z

.field private j:Z

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/browser/UrlBean;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 55
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->i:Z

    .line 56
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->j:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->k:Ljava/util/ArrayList;

    .line 68
    const-string v0, "http://www.fragfinn.de/"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->m:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->i:Z

    return p1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->j:Z

    return v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->i:Z

    return v0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->f:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public static showRejectDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 5

    .prologue
    .line 366
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 367
    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 369
    const v0, 0x7f0d00f5

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0d0240

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lde/gdata/mobilesecurity/activities/browser/f;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/activities/browser/f;-><init>()V

    invoke-static {p0, v0, v2, v3}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v2

    .line 376
    const v0, 0x7f0b013b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 377
    if-eqz v0, :cond_0

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0d0198

    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :cond_0
    invoke-static {v1}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setView(Landroid/view/View;)V

    .line 383
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DIALOG_TAG"

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 385
    return-object v2
.end method


# virtual methods
.method public doUrlsMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    const-string v1, "^(https?://)?([a-zA-Z0-9]+\\.)*"

    .line 341
    const-string v2, "(/.*)?"

    .line 343
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0, p2}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->validateAndCorrectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^www.*?\\."

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0, p2}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->validateAndCorrectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public onAccept()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->j:Z

    .line 263
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 242
    :pswitch_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->aboutClick(Landroid/webkit/WebView;Landroid/app/Activity;)V

    goto :goto_0

    .line 251
    :pswitch_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->settingsClick(Landroid/content/Context;)V

    goto :goto_0

    .line 254
    :pswitch_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b038a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a:Landroid/content/Context;

    .line 80
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->h:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 82
    new-instance v0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->g:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    .line 83
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 234
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 235
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 236
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    const v0, 0x7f030037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 115
    const v1, 0x7f0b0136

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    .line 117
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 118
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 119
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 120
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 122
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/a;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/browser/a;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 155
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->h:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBrowserStartupPage()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 167
    :goto_0
    const-string v1, ""

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->m:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 169
    :cond_0
    const v1, 0x7f0b0138

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->c:Landroid/widget/EditText;

    .line 171
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 173
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->c:Landroid/widget/EditText;

    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/b;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/browser/b;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 184
    const v1, 0x7f0b0139

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->e:Landroid/widget/ImageView;

    .line 185
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->e:Landroid/widget/ImageView;

    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/c;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/browser/c;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v1, 0x7f0b013a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->d:Landroid/widget/ImageButton;

    .line 194
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostHonycomb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->d:Landroid/widget/ImageButton;

    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/d;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/browser/d;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->g:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->setData()V

    .line 209
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->g:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->setWebView(Landroid/webkit/WebView;)V

    .line 211
    new-instance v1, Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->f:Landroid/widget/ListPopupWindow;

    .line 212
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->f:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->g:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->f:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 214
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->f:Landroid/widget/ListPopupWindow;

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 215
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->f:Landroid/widget/ListPopupWindow;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 217
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->g:Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->f:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->setListPopupMenu(Landroid/widget/ListPopupWindow;)V

    .line 228
    :goto_1
    return-object v0

    .line 157
    :pswitch_0
    const-string v1, ""

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 160
    :pswitch_1
    const v1, 0x7f0d019e

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 163
    :pswitch_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->h:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBrowserSpecificPage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->d:Landroid/widget/ImageButton;

    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/e;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/browser/e;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->d:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_1

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReject()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->j:Z

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GData/blocked_browser.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 276
    return-void

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/blocked_browser.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->h:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardBrowserMode()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->l:I

    .line 90
    new-instance v0, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;-><init>(Landroid/content/Context;)V

    .line 91
    iget v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->l:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 92
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->fillArrayListWithUrls(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->k:Ljava/util/ArrayList;

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->close()V

    .line 98
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->h:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBrowserStartupPage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_1
    return-void

    .line 93
    :cond_1
    iget v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->l:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 94
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->fillArrayListWithUrls(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->k:Ljava/util/ArrayList;

    goto :goto_0

    .line 100
    :pswitch_0
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->m:Ljava/lang/String;

    goto :goto_1

    .line 103
    :pswitch_1
    const v0, 0x7f0d019e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->m:Ljava/lang/String;

    goto :goto_1

    .line 106
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->h:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBrowserSpecificPage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->m:Ljava/lang/String;

    goto :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public validateAndCorrectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 362
    :cond_0
    return-object p1
.end method

.method public verifyDocumentContent(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    .line 355
    return v0
.end method

.method public verifyUrl(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 280
    const-string v0, "^(https?)://"

    .line 281
    const-string v3, ".*"

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-static {v5}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "about:blank"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    :cond_0
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->j:Z

    .line 335
    :goto_0
    return v1

    .line 293
    :cond_1
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->h:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardBrowserFragFinnEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "www.fragfinn.de/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->j:Z

    goto :goto_0

    .line 299
    :cond_2
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/SecSrv;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a:Landroid/content/Context;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lde/gdata/mobilesecurity/secsrv/SecSrv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    :try_start_0
    invoke-virtual {v0, v5}, Lde/gdata/mobilesecurity/secsrv/SecSrv;->RequestUrl(Ljava/lang/String;)Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isChildsafe()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isMalicious()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v2

    move v3, v2

    :goto_1
    move v4, v3

    move v3, v0

    .line 314
    :goto_2
    iget v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->l:I

    if-ne v0, v1, :cond_8

    .line 316
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    .line 317
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->doUrlsMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->j:Z

    move v4, v1

    .line 323
    :goto_3
    if-eqz v3, :cond_5

    move v4, v1

    :cond_5
    :goto_4
    move v1, v4

    .line 335
    goto :goto_0

    :cond_6
    move v0, v1

    move v3, v1

    .line 307
    goto :goto_1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    move v3, v2

    move v4, v1

    goto :goto_2

    .line 326
    :cond_8
    iget v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 327
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    .line 328
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;->doUrlsMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v4, v2

    .line 330
    goto :goto_4

    :cond_a
    move v4, v2

    goto :goto_3
.end method
