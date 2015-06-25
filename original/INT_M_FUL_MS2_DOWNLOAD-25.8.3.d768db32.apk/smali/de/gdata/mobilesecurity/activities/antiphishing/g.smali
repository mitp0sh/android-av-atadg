.class Lde/gdata/mobilesecurity/activities/antiphishing/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/g;->a:Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/g;->a:Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;->a(Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWebshieldActivated(Z)V

    .line 64
    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/g;->a:Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;->a(Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLastCheckedDomain(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method
