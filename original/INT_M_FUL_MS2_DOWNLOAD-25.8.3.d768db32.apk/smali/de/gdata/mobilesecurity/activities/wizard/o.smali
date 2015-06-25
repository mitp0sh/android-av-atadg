.class Lde/gdata/mobilesecurity/activities/wizard/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Landroid/widget/LinearLayout;

.field final synthetic d:Landroid/widget/LinearLayout;

.field final synthetic e:Landroid/widget/CheckBox;

.field final synthetic f:Landroid/widget/Button;

.field final synthetic g:Landroid/widget/LinearLayout;

.field final synthetic h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/Button;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->b:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->c:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->d:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->e:Landroid/widget/CheckBox;

    iput-object p7, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->f:Landroid/widget/Button;

    iput-object p8, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 394
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->f:Landroid/widget/Button;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0561

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->f:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/wizard/p;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/wizard/p;-><init>(Lde/gdata/mobilesecurity/activities/wizard/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/o;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
