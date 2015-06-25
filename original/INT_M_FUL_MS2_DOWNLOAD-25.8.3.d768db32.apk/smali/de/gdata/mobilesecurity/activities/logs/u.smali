.class Lde/gdata/mobilesecurity/activities/logs/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/u;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/u;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanService;->cancelScan(Landroid/content/Context;)V

    .line 259
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/u;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d04c4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    return-void
.end method
