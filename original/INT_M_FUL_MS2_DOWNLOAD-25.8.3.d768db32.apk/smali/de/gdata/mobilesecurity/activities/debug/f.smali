.class Lde/gdata/mobilesecurity/activities/debug/f;
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
    .line 325
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/f;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/f;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->d(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    .line 329
    return-void
.end method
