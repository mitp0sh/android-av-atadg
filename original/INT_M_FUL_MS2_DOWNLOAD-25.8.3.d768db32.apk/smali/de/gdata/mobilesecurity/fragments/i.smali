.class Lde/gdata/mobilesecurity/fragments/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/i;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/i;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->b(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://www.gdata.de/ueber-g-data/ansprechpartner.html"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    return-void
.end method
