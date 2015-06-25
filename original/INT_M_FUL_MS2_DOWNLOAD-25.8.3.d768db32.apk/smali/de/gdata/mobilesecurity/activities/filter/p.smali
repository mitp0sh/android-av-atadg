.class Lde/gdata/mobilesecurity/activities/filter/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/p;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/p;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setZoomHintWasShown(Z)Z

    .line 118
    return-void
.end method
