.class Lde/gdata/mobilesecurity/activities/panicbutton/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/u;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/u;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 198
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/u;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/u;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/u;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    const v2, 0x7f0d0415

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/u;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->c(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V

    .line 203
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/u;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 204
    return-void
.end method
