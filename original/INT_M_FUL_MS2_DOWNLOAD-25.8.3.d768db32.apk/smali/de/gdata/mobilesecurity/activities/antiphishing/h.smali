.class Lde/gdata/mobilesecurity/activities/antiphishing/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/h;->a:Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/h;->a:Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b030d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/h;->a:Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;

    const v3, 0x7f0d045b

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/h;->a:Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;

    const v3, 0x7f0d045c

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method
