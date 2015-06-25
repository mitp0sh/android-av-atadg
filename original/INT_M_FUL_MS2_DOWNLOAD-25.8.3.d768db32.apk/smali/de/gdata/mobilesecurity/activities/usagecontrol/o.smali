.class Lde/gdata/mobilesecurity/activities/usagecontrol/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/l;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/l;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/o;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/o;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/l;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    .line 165
    return-void
.end method
