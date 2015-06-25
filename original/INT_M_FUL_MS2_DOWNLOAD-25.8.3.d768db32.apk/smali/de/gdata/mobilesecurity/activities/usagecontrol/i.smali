.class Lde/gdata/mobilesecurity/activities/usagecontrol/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/i;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/j;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/j;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 384
    return-void
.end method
