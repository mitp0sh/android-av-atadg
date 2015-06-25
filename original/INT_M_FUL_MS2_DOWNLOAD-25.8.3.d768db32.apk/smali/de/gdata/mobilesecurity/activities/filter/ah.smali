.class Lde/gdata/mobilesecurity/activities/filter/ah;
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
    .line 317
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ah;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ah;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ah;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ah;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ah;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v1, v3, v3}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ah;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ah;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    const/16 v2, 0x18

    invoke-static {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ah;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 331
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ah;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->setTodaysDate()V

    .line 328
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ah;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
