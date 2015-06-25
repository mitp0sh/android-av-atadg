.class Lde/gdata/mobilesecurity/fragments/f;
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
    .line 107
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/f;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/f;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->b(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://www.gdata.de/agb.html"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    return-void
.end method
