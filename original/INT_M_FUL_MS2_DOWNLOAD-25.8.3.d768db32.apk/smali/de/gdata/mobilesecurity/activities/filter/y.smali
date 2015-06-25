.class Lde/gdata/mobilesecurity/activities/filter/y;
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
    .line 388
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/y;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/y;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->g(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/y;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->f(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/y;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setLocationId(I)V

    goto :goto_0
.end method
