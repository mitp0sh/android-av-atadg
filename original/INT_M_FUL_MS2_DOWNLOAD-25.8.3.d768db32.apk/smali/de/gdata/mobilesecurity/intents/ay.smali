.class Lde/gdata/mobilesecurity/intents/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Preferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Preferences;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ay;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ay;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Preferences;->showAdvancedOptions(Landroid/app/Activity;)V

    .line 389
    const/4 v0, 0x1

    return v0
.end method
