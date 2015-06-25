.class Lde/gdata/mobilesecurity/activities/wizard/c;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 215
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/c;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    .line 216
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/c;->b:Ljava/util/Map;

    .line 217
    return-void
.end method


# virtual methods
.method public a(I)Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/c;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    return-object v0
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/c;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x3

    .line 240
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/c;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->a(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 225
    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->create(I)Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/c;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-object v0
.end method
