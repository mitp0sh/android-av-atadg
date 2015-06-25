.class Lde/gdata/mobilesecurity/intents/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bv;->c:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/bv;->a:Ljava/lang/String;

    iput p3, p0, Lde/gdata/mobilesecurity/intents/bv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bv;->c:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;->dismiss()V

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/bv;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bv;->c:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;->a(Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;)Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog$MalwareRemovedListener;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/intents/bv;->b:I

    invoke-interface {v0, v1}, Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog$MalwareRemovedListener;->onMalwareRemoved(I)V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bv;->c:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0xb11f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    goto :goto_0
.end method
