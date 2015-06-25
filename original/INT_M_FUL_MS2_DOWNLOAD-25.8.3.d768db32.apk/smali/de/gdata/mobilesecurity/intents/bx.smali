.class Lde/gdata/mobilesecurity/intents/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveFailDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveFailDialog;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bx;->a:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveFailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bx;->a:Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveFailDialog;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/ScanResult$MalwareRemoveFailDialog;->dismiss()V

    .line 94
    return-void
.end method
