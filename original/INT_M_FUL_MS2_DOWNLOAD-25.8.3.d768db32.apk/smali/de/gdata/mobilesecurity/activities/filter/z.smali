.class Lde/gdata/mobilesecurity/activities/filter/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/z;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/z;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->d(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Z)Z

    .line 426
    const/4 v0, 0x0

    return v0
.end method
