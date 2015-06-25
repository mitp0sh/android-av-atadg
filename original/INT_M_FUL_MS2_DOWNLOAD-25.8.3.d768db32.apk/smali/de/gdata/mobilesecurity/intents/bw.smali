.class Lde/gdata/mobilesecurity/intents/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bw;->a:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bw;->a:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveAskDialog;->dismiss()V

    .line 56
    return-void
.end method
