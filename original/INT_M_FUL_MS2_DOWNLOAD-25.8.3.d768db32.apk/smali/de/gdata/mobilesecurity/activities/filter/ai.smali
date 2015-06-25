.class Lde/gdata/mobilesecurity/activities/filter/ai;
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
    .line 334
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ai;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ai;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->d(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ai;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->e(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ai;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    const-string v1, "1111111"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setSchedule(Ljava/lang/String;)V

    .line 345
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ai;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ai;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/ai;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->e(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Landroid/view/ViewGroup;)V

    .line 346
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ai;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 349
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ai;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    const-string v1, "0000000"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setSchedule(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ai;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->e(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
