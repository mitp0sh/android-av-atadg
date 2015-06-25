.class Lde/gdata/mobilesecurity/fragments/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/ScanFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/ScanFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ar;->a:Lde/gdata/mobilesecurity/fragments/ScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ar;->a:Lde/gdata/mobilesecurity/fragments/ScanFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->OCLstartScan()V

    .line 88
    return-void
.end method
