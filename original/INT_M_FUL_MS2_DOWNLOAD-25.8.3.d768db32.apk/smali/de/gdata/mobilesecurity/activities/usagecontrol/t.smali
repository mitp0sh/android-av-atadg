.class Lde/gdata/mobilesecurity/activities/usagecontrol/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/t;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/t;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a(Ljava/lang/String;)V

    .line 229
    return-void
.end method
