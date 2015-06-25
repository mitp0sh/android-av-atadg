.class Lde/gdata/mobilesecurity/activities/wizard/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Landroid/widget/LinearLayout;

.field final synthetic d:Landroid/widget/LinearLayout;

.field final synthetic e:Landroid/widget/LinearLayout;

.field final synthetic f:Landroid/widget/CheckBox;

.field final synthetic g:Landroid/widget/LinearLayout;

.field final synthetic h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;Landroid/widget/CheckBox;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->b:Landroid/widget/Button;

    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->c:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->d:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->e:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->f:Landroid/widget/CheckBox;

    iput-object p8, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 371
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->h(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->b:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->b:Landroid/widget/Button;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d055f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->b:Landroid/widget/Button;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->i(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/n;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
