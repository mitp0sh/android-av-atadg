.class Lde/gdata/mobilesecurity/activities/usagecontrol/b;
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
    .line 241
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/b;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/b;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a(Ljava/lang/String;)V

    .line 244
    return-void
.end method
