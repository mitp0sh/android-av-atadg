.class Lde/gdata/mobilesecurity/scan/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/scan/ScanProgress;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/scan/ScanProgress;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/c;->a:Lde/gdata/mobilesecurity/scan/ScanProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/c;->a:Lde/gdata/mobilesecurity/scan/ScanProgress;

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanProgress;->b(Lde/gdata/mobilesecurity/scan/ScanProgress;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanService;->cancelScan(Landroid/content/Context;)V

    .line 112
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 113
    return-void
.end method
