.class Lde/gdata/mobilesecurity/scan/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/scan/ScanProgress;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/scan/ScanProgress;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/b;->a:Lde/gdata/mobilesecurity/scan/ScanProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/b;->a:Lde/gdata/mobilesecurity/scan/ScanProgress;

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanProgress;->a(Lde/gdata/mobilesecurity/scan/ScanProgress;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "string_msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
