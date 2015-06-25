.class public Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;
.super Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;
.source "SourceFile"


# instance fields
.field a:Landroid/app/Activity;

.field b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private c:Landroid/preference/EditTextPreference;

.field private e:Landroid/preference/EditTextPreference;

.field private f:Landroid/preference/EditTextPreference;

.field private g:Landroid/preference/CheckBoxPreference;

.field private h:Landroid/preference/CheckBoxPreference;

.field private i:Landroid/preference/CheckBoxPreference;

.field private j:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->i:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    .line 166
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x5a0

    if-ge v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallUsageTimeLimited(Z)V

    .line 168
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardUsageTimeExceededShown(Z)V

    .line 176
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallAllowedUsageTimeLimit(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->c:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d030c

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d030d

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    return-void

    .line 169
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallUsageTimeLimited(Z)V

    .line 171
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardUsageTimeExceededShown(Z)V

    .line 172
    const-string p1, "1440"

    goto :goto_0

    .line 174
    :cond_1
    const-string p1, "0"

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 182
    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->e:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->j:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b(Ljava/lang/String;)Z

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->g:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->c:Landroid/preference/EditTextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->a(Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->resetOverallUsageTime()V

    .line 204
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->c:Landroid/preference/EditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 215
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    new-instance v1, Landroid/graphics/PointF;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->j:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->j:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "y"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 218
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v1, v7, v7}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getLocationFromAddress(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v1

    .line 221
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getLocationAdressFromAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    invoke-virtual {v1, v7, v7}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 224
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->e:Landroid/preference/EditTextPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d030f

    invoke-virtual {p0, v5}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 227
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/graphics/PointF;->x:F

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    :cond_1
    move v0, v2

    .line 243
    :goto_0
    return v0

    .line 238
    :cond_2
    const v0, 0x7f0d0310

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 240
    goto :goto_0

    :cond_3
    move v0, v3

    .line 243
    goto :goto_0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->h:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)Landroid/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->c:Landroid/preference/EditTextPreference;

    return-object v0
.end method


# virtual methods
.method public configurateRadiusButton(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 247
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d030f

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d0311

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iput-object p0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->a:Landroid/app/Activity;

    .line 45
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->j:Landroid/content/SharedPreferences;

    .line 47
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->addPreferencesFromResource(I)V

    .line 49
    const-string v0, "KIDSGUARD_OVERALL_ALLOWED_USAGE_TIME"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->c:Landroid/preference/EditTextPreference;

    .line 51
    const-string v0, "KIDSGUARD_SET_ADRESS"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->e:Landroid/preference/EditTextPreference;

    .line 52
    const-string v0, "KIDSGUARD_SET_RADIUS"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    .line 54
    const-string v0, "KIDSGUARD_CHECKBOX_LOCATION"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->g:Landroid/preference/CheckBoxPreference;

    .line 55
    const-string v0, "KIDSGUARD_CHECKBOX_OVERALL_USAGE_TIME"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->h:Landroid/preference/CheckBoxPreference;

    .line 57
    const-string v0, "KIDSGUARD_ADD_TIMESCOPE"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->i:Landroid/preference/CheckBoxPreference;

    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->a(Z)V

    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b(Z)V

    .line 62
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->i:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/cb;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/cb;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->g:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->g:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/cc;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/cc;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->h:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->h:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/cd;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/cd;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->c:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->c:Landroid/preference/EditTextPreference;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/ce;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ce;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->h:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->h:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/cf;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/cf;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->e:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_5

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0313

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 136
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 140
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->e:Landroid/preference/EditTextPreference;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/cg;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/cg;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    :cond_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_6

    .line 150
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->j:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->configurateRadiusButton(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->f:Landroid/preference/EditTextPreference;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/ch;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ch;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    :cond_6
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 257
    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->finish()V

    .line 260
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
