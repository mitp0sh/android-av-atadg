.class public Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static f:Ljava/lang/String;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/app/Activity;

.field c:Landroid/view/LayoutInflater;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/widget/ListPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "Header"

    sput-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 37
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->c:Landroid/view/LayoutInflater;

    .line 38
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->b:Landroid/app/Activity;

    .line 40
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->c:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static aboutClick(Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 115
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

    const-string v1, "/GData/about.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 140
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/about.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;)Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->e:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public static settingsClick(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    const-class v1, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferences;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const v6, 0x7f0b0141

    const v5, 0x7f0b013e

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03003a

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 48
    if-gtz p1, :cond_0

    .line 49
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    const v0, 0x7f0b013f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 53
    new-instance v1, Lde/gdata/mobilesecurity/activities/browser/g;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/browser/g;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0b0140

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    new-instance v1, Lde/gdata/mobilesecurity/activities/browser/h;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/browser/h;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :goto_0
    return-object v3

    .line 76
    :cond_0
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 77
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    new-instance v1, Lde/gdata/mobilesecurity/activities/browser/i;

    invoke-direct {v1, p0, p1}, Lde/gdata/mobilesecurity/activities/browser/i;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v1, 0x7f0b0142

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/j;

    invoke-direct {v2, p0, v0}, Lde/gdata/mobilesecurity/activities/browser/j;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public quitClick()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 155
    return-void
.end method

.method public setData()V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->clear()V

    .line 159
    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->add(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0d0199

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->add(Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0d019d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->add(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0d019c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->add(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public setListPopupMenu(Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->e:Landroid/widget/ListPopupWindow;

    .line 171
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserMenuArrayAdapter;->d:Landroid/webkit/WebView;

    .line 167
    return-void
.end method
