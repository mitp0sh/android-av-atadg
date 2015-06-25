.class Lde/gdata/mobilesecurity/activities/filter/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ag;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/ag;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ag;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Z)V

    .line 300
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ag;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/ag;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Z)V

    .line 301
    return-void

    :cond_0
    move v0, v2

    .line 299
    goto :goto_0

    :cond_1
    move v1, v2

    .line 300
    goto :goto_1
.end method
