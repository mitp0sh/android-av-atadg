.class public Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final URL_GDATA_ABOUT:Ljava/lang/String; = "https://www.gdata.de/impressum.html"

.field public static final URL_GDATA_CONTACT:Ljava/lang/String; = "https://www.gdata.de/ueber-g-data/ansprechpartner.html"

.field public static final URL_GDATA_FAQ:Ljava/lang/String; = "https://www.securityexperten.com/tipps-und-tricks/"

.field public static final URL_GDATA_TERMS:Ljava/lang/String; = "https://www.gdata.de/agb.html"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->g:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 45
    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    const v0, 0x7f0b007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->a:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->a:Landroid/widget/Button;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/m;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/m;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0b007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->b:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->b:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/n;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/n;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0b007d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->c:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->c:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/o;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/o;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0b007e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->d:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->d:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/p;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/p;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0b007f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->e:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->e:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/q;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/q;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f0b0080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->f:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->f:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/r;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/r;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 104
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 106
    return-object v1
.end method
