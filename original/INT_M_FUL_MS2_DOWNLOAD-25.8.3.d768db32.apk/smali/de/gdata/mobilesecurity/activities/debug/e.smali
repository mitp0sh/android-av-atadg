.class Lde/gdata/mobilesecurity/activities/debug/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/e;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/e;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->scheduleUpdate(Landroid/content/Context;)V

    .line 322
    return-void
.end method
