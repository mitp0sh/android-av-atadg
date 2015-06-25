.class Lde/gdata/mobilesecurity/activities/antiphishing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/a;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/a;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/a;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    return-void
.end method
