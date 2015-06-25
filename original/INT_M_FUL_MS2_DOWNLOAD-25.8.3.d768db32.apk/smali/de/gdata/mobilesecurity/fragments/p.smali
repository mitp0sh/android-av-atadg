.class Lde/gdata/mobilesecurity/fragments/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/p;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/p;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://www.gdata.de/impressum.html"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    return-void
.end method
