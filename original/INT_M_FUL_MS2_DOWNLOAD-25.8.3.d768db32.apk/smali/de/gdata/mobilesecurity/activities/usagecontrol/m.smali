.class Lde/gdata/mobilesecurity/activities/usagecontrol/m;
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
    .line 151
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/m;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/m;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/l;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    .line 155
    return-void
.end method
