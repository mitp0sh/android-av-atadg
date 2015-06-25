.class Lde/gdata/mobilesecurity/activities/usagecontrol/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->h(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->i(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->e(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v1, v3, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->b(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->f(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    const/16 v2, 0x18

    invoke-static {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->b(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->setTodaysDate()V

    .line 282
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->i(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
