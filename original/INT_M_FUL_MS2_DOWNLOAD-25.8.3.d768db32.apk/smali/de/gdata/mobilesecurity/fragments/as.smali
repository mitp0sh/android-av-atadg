.class Lde/gdata/mobilesecurity/fragments/as;
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
    .line 105
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/as;->a:Lde/gdata/mobilesecurity/fragments/ScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/as;->a:Lde/gdata/mobilesecurity/fragments/ScanFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanService;->cancelScan(Landroid/content/Context;)V

    .line 109
    return-void
.end method
