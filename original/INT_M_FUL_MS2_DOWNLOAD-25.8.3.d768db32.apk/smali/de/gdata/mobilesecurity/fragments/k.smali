.class Lde/gdata/mobilesecurity/fragments/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/k;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Context;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 199
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/k;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/k;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-static {v1, v2, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->sendSMSToIpx(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/fragments/k;->a([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
