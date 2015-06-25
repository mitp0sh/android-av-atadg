.class public Lorg/acra/ACRAConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/annotation/ReportsCrashes;


# instance fields
.field private A:Ljava/lang/Integer;

.field private B:Ljava/lang/Integer;

.field private C:Ljava/lang/Integer;

.field private D:Ljava/lang/Integer;

.field private E:Ljava/lang/Integer;

.field private F:Ljava/lang/Integer;

.field private G:Ljava/lang/Integer;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/Integer;

.field private J:Ljava/lang/Boolean;

.field private K:Ljava/lang/Boolean;

.field private L:Ljava/lang/Boolean;

.field private M:[Ljava/lang/String;

.field private N:[Ljava/lang/String;

.field private O:Ljava/lang/Class;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/Integer;

.field private R:Ljava/lang/Boolean;

.field private S:Ljava/lang/String;

.field private T:Lorg/acra/util/HttpsSocketFactoryFactory;

.field private U:Lorg/acra/sender/HttpSender$Method;

.field private V:Lorg/acra/sender/HttpSender$Type;

.field private W:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private X:Ljava/security/KeyStore;

.field private final a:Lorg/acra/util/ReflectionHelper;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:[Lorg/acra/ReportField;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Boolean;

.field private n:[Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Integer;

.field private q:Lorg/acra/ReportingInteractionMode;

.field private r:Lorg/acra/annotation/ReportsCrashes;

.field private s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/BaseCrashReportDialog;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;

.field private w:Ljava/lang/Integer;

.field private x:Ljava/lang/Integer;

.field private y:Ljava/lang/Integer;

.field private z:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    .line 692
    return-void
.end method

.method public constructor <init>(Lorg/acra/annotation/ReportsCrashes;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/acra/util/ReflectionHelper;

    invoke-direct {v0}, Lorg/acra/util/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->a:Lorg/acra/util/ReflectionHelper;

    .line 43
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->b:[Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->c:[Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->d:Ljava/lang/Integer;

    .line 47
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->e:[Lorg/acra/ReportField;

    .line 48
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->f:Ljava/lang/Boolean;

    .line 49
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->g:Ljava/lang/Boolean;

    .line 50
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->h:Ljava/lang/Integer;

    .line 51
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->i:Ljava/lang/Boolean;

    .line 52
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->j:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->k:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->l:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->m:Ljava/lang/Boolean;

    .line 57
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->n:[Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->o:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->p:Ljava/lang/Integer;

    .line 60
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->q:Lorg/acra/ReportingInteractionMode;

    .line 61
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    .line 62
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->s:Ljava/lang/Class;

    .line 64
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->t:Ljava/lang/Integer;

    .line 65
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->u:Ljava/lang/Integer;

    .line 66
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->v:Ljava/lang/Integer;

    .line 67
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->w:Ljava/lang/Integer;

    .line 68
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->x:Ljava/lang/Integer;

    .line 69
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->y:Ljava/lang/Integer;

    .line 70
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->z:Ljava/lang/Integer;

    .line 71
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->A:Ljava/lang/Integer;

    .line 72
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->B:Ljava/lang/Integer;

    .line 73
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->C:Ljava/lang/Integer;

    .line 74
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->D:Ljava/lang/Integer;

    .line 75
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->E:Ljava/lang/Integer;

    .line 76
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->F:Ljava/lang/Integer;

    .line 77
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->G:Ljava/lang/Integer;

    .line 78
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->H:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->I:Ljava/lang/Integer;

    .line 80
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->J:Ljava/lang/Boolean;

    .line 81
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->K:Ljava/lang/Boolean;

    .line 82
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->L:Ljava/lang/Boolean;

    .line 84
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->M:[Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->N:[Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->P:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->Q:Ljava/lang/Integer;

    .line 90
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->R:Ljava/lang/Boolean;

    .line 91
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->S:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->U:Lorg/acra/sender/HttpSender$Method;

    .line 94
    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->V:Lorg/acra/sender/HttpSender$Type;

    .line 683
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    .line 684
    return-void
.end method

.method public static isNull(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1334
    if-eqz p0, :cond_0

    const-string v0, "ACRA-NULL-STRING"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public additionalDropBoxTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->b:[Ljava/lang/String;

    .line 704
    :goto_0
    return-object v0

    .line 700
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 704
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public additionalSharedPreferences()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->c:[Ljava/lang/String;

    .line 717
    :goto_0
    return-object v0

    .line 713
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->additionalSharedPreferences()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 717
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->annotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public applicationLogFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->P:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->P:Ljava/lang/String;

    .line 1207
    :goto_0
    return-object v0

    .line 1203
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1207
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public applicationLogFileLines()I
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->Q:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->Q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1220
    :goto_0
    return v0

    .line 1216
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFileLines()I

    move-result v0

    goto :goto_0

    .line 1220
    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public buildConfigClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->O:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->O:Ljava/lang/Class;

    .line 1194
    :goto_0
    return-object v0

    .line 1190
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->buildConfigClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->buildConfigClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connectionTimeout()I
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 735
    :goto_0
    return v0

    .line 731
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->connectionTimeout()I

    move-result v0

    goto :goto_0

    .line 735
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method public customReportContent()[Lorg/acra/ReportField;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->e:[Lorg/acra/ReportField;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->e:[Lorg/acra/ReportField;

    .line 748
    :goto_0
    return-object v0

    .line 744
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/acra/ReportField;

    goto :goto_0
.end method

.method public deleteOldUnsentReportsOnApplicationStart()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 774
    :goto_0
    return v0

    .line 770
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v0

    goto :goto_0

    .line 774
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteUnapprovedReportsOnApplicationStart()Z
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 761
    :goto_0
    return v0

    .line 757
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v0

    goto :goto_0

    .line 761
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableSSLCertValidation()Z
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->R:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->R:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1233
    :goto_0
    return v0

    .line 1229
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->disableSSLCertValidation()Z

    move-result v0

    goto :goto_0

    .line 1233
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dropboxCollectionMinutes()I
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 787
    :goto_0
    return v0

    .line 783
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->dropboxCollectionMinutes()I

    move-result v0

    goto :goto_0

    .line 787
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public excludeMatchingSettingsKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->N:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->N:[Ljava/lang/String;

    .line 1177
    :goto_0
    return-object v0

    .line 1173
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSettingsKeys()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1177
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->M:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->M:[Ljava/lang/String;

    .line 1164
    :goto_0
    return-object v0

    .line 1160
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1161
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1164
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public forceCloseDialogAfterToast()Z
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 800
    :goto_0
    return v0

    .line 796
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->forceCloseDialogAfterToast()Z

    move-result v0

    goto :goto_0

    .line 800
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public formUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->j:Ljava/lang/String;

    .line 813
    :goto_0
    return-object v0

    .line 809
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 813
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public formUriBasicAuthLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->k:Ljava/lang/String;

    .line 826
    :goto_0
    return-object v0

    .line 822
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 826
    :cond_1
    const-string v0, "ACRA-NULL-STRING"

    goto :goto_0
.end method

.method public formUriBasicAuthPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->l:Ljava/lang/String;

    .line 839
    :goto_0
    return-object v0

    .line 835
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_1
    const-string v0, "ACRA-NULL-STRING"

    goto :goto_0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->W:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpSocketFactoryFactory()Lorg/acra/util/HttpsSocketFactoryFactory;
    .locals 5

    .prologue
    .line 1272
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->T:Lorg/acra/util/HttpsSocketFactoryFactory;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->T:Lorg/acra/util/HttpsSocketFactoryFactory;

    .line 1295
    :goto_0
    return-object v0

    .line 1276
    :cond_0
    invoke-virtual {p0}, Lorg/acra/ACRAConfiguration;->httpsSocketFactoryFactoryClass()Ljava/lang/String;

    move-result-object v1

    .line 1277
    if-eqz v1, :cond_1

    .line 1279
    :try_start_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->a:Lorg/acra/util/ReflectionHelper;

    iget-object v2, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v2}, Lorg/acra/annotation/ReportsCrashes;->httpsSocketFactoryFactoryClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/acra/util/ReflectionHelper;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1280
    instance-of v2, v0, Lorg/acra/util/HttpsSocketFactoryFactory;

    if-eqz v2, :cond_3

    .line 1281
    check-cast v0, Lorg/acra/util/HttpsSocketFactoryFactory;

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->T:Lorg/acra/util/HttpsSocketFactoryFactory;
    :try_end_0
    .catch Lorg/acra/util/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->S:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1292
    sget-object v0, Lorg/acra/util/DefaultHttpsSocketFactoryFactory;->INSTANCE:Lorg/acra/util/HttpsSocketFactoryFactory;

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->T:Lorg/acra/util/HttpsSocketFactoryFactory;

    .line 1295
    :cond_2
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->T:Lorg/acra/util/HttpsSocketFactoryFactory;

    goto :goto_0

    .line 1283
    :cond_3
    :try_start_1
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using default httpsSocketFactoryFactory - not a HttpSocketFactoryFactory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/acra/util/ReflectionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using default httpsSocketFactoryFactory - Could not construct : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public httpMethod()Lorg/acra/sender/HttpSender$Method;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->U:Lorg/acra/sender/HttpSender$Method;

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->U:Lorg/acra/sender/HttpSender$Method;

    .line 1309
    :goto_0
    return-object v0

    .line 1305
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    goto :goto_0

    .line 1309
    :cond_1
    sget-object v0, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    goto :goto_0
.end method

.method public httpsSocketFactoryFactoryClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->S:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->S:Ljava/lang/String;

    .line 1246
    :goto_0
    return-object v0

    .line 1242
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1243
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->httpsSocketFactoryFactoryClass()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public includeDropBoxSystemTags()Z
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 852
    :goto_0
    return v0

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->includeDropBoxSystemTags()Z

    move-result v0

    goto :goto_0

    .line 852
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->X:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->X:Ljava/security/KeyStore;

    .line 1330
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logcatArguments()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 857
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->n:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->n:[Ljava/lang/String;

    .line 865
    :goto_0
    return-object v0

    .line 861
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->logcatArguments()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 865
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public logcatFilterByPid()Z
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->J:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->J:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1125
    :goto_0
    return v0

    .line 1121
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->logcatFilterByPid()Z

    move-result v0

    goto :goto_0

    .line 1125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mailTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->o:Ljava/lang/String;

    .line 878
    :goto_0
    return-object v0

    .line 874
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 878
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public maxNumberOfRequestRetries()I
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->p:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 891
    :goto_0
    return v0

    .line 887
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->maxNumberOfRequestRetries()I

    move-result v0

    goto :goto_0

    .line 891
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public mode()Lorg/acra/ReportingInteractionMode;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->q:Lorg/acra/ReportingInteractionMode;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->q:Lorg/acra/ReportingInteractionMode;

    .line 904
    :goto_0
    return-object v0

    .line 900
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    goto :goto_0

    .line 904
    :cond_1
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    goto :goto_0
.end method

.method public reportDialogClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/BaseCrashReportDialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->s:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->s:Ljava/lang/Class;

    .line 1260
    :goto_0
    return-object v0

    .line 1256
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1257
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1260
    :cond_1
    const-class v0, Lorg/acra/CrashReportDialog;

    goto :goto_0
.end method

.method public reportType()Lorg/acra/sender/HttpSender$Type;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->V:Lorg/acra/sender/HttpSender$Type;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->V:Lorg/acra/sender/HttpSender$Type;

    .line 1322
    :goto_0
    return-object v0

    .line 1318
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1319
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v0

    goto :goto_0

    .line 1322
    :cond_1
    sget-object v0, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    goto :goto_0
.end method

.method public resDialogCommentPrompt()I
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 943
    :goto_0
    return v0

    .line 939
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogCommentPrompt()I

    move-result v0

    goto :goto_0

    .line 943
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogEmailPrompt()I
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 956
    :goto_0
    return v0

    .line 952
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogEmailPrompt()I

    move-result v0

    goto :goto_0

    .line 956
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogIcon()I
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->x:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 969
    :goto_0
    return v0

    .line 965
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 966
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogIcon()I

    move-result v0

    goto :goto_0

    .line 969
    :cond_1
    const v0, 0x1080027

    goto :goto_0
.end method

.method public resDialogNegativeButtonText()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->u:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 930
    :goto_0
    return v0

    .line 926
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogNegativeButtonText()I

    move-result v0

    goto :goto_0

    .line 930
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogOkToast()I
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->y:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 982
    :goto_0
    return v0

    .line 978
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogOkToast()I

    move-result v0

    goto :goto_0

    .line 982
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogPositiveButtonText()I
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 917
    :goto_0
    return v0

    .line 913
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 914
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogPositiveButtonText()I

    move-result v0

    goto :goto_0

    .line 917
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogText()I
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->z:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 995
    :goto_0
    return v0

    .line 991
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v0

    goto :goto_0

    .line 995
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogTitle()I
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->A:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1008
    :goto_0
    return v0

    .line 1004
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1005
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogTitle()I

    move-result v0

    goto :goto_0

    .line 1008
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resNotifIcon()I
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->B:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->B:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1021
    :goto_0
    return v0

    .line 1017
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1018
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v0

    goto :goto_0

    .line 1021
    :cond_1
    const v0, 0x1080078

    goto :goto_0
.end method

.method public resNotifText()I
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->C:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->C:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1034
    :goto_0
    return v0

    .line 1030
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v0

    goto :goto_0

    .line 1034
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resNotifTickerText()I
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->D:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1047
    :goto_0
    return v0

    .line 1043
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v0

    goto :goto_0

    .line 1047
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resNotifTitle()I
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->E:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->E:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1060
    :goto_0
    return v0

    .line 1056
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v0

    goto :goto_0

    .line 1060
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resToastText()I
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->F:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->F:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1073
    :goto_0
    return v0

    .line 1069
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v0

    goto :goto_0

    .line 1073
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendReportsAtShutdown()Z
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->L:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->L:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1151
    :goto_0
    return v0

    .line 1147
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sendReportsAtShutdown()Z

    move-result v0

    goto :goto_0

    .line 1151
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendReportsInDevMode()Z
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->K:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->K:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1138
    :goto_0
    return v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sendReportsInDevMode()Z

    move-result v0

    goto :goto_0

    .line 1138
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAdditionalDropboxTags([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->b:[Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public setAdditionalSharedPreferences([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->c:[Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setApplicationLogFile(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->P:Ljava/lang/String;

    .line 615
    return-object p0
.end method

.method public setApplicationLogFileLines(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 628
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->Q:Ljava/lang/Integer;

    .line 629
    return-object p0
.end method

.method public setBuildConfigClass(Ljava/lang/Class;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->O:Ljava/lang/Class;

    .line 603
    return-object p0
.end method

.method public setConnectionTimeout(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->d:Ljava/lang/Integer;

    .line 152
    return-object p0
.end method

.method public setCustomReportContent([Lorg/acra/ReportField;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->e:[Lorg/acra/ReportField;

    .line 163
    return-object p0
.end method

.method public setDeleteOldUnsentReportsOnApplicationStart(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->g:Ljava/lang/Boolean;

    .line 184
    return-object p0
.end method

.method public setDeleteUnapprovedReportsOnApplicationStart(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->f:Ljava/lang/Boolean;

    .line 174
    return-object p0
.end method

.method public setDisableSSLCertValidation(Z)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 640
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->R:Ljava/lang/Boolean;

    .line 641
    return-object p0
.end method

.method public setDropboxCollectionMinutes(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->h:Ljava/lang/Integer;

    .line 195
    return-object p0
.end method

.method public setExcludeMatchingSettingsKeys([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->N:[Ljava/lang/String;

    .line 597
    return-object p0
.end method

.method public setExcludeMatchingSharedPreferencesKeys([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->M:[Ljava/lang/String;

    .line 583
    return-object p0
.end method

.method public setForceCloseDialogAfterToast(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->i:Ljava/lang/Boolean;

    .line 206
    return-object p0
.end method

.method public setFormUri(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->j:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public setFormUriBasicAuthLogin(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->k:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public setFormUriBasicAuthPassword(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->l:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public setHttpHeaders(Ljava/util/Map;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/acra/ACRAConfiguration;"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->W:Ljava/util/Map;

    .line 108
    return-object p0
.end method

.method public setHttpMethod(Lorg/acra/sender/HttpSender$Method;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->U:Lorg/acra/sender/HttpSender$Method;

    .line 653
    return-object p0
.end method

.method public setHttpsSocketFactoryFactory(Lorg/acra/util/HttpsSocketFactoryFactory;)V
    .locals 0

    .prologue
    .line 1268
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->T:Lorg/acra/util/HttpsSocketFactoryFactory;

    .line 1269
    return-void
.end method

.method public setIncludeDropboxSystemTags(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->m:Ljava/lang/Boolean;

    .line 255
    return-object p0
.end method

.method public setKeyStore(Ljava/security/KeyStore;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->X:Ljava/security/KeyStore;

    .line 677
    return-void
.end method

.method public setLogcatArguments([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->n:[Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public setLogcatFilterByPid(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->J:Ljava/lang/Boolean;

    .line 542
    return-object p0
.end method

.method public setMailTo(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->o:Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public setMaxNumberOfRequestRetries(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->p:Ljava/lang/Integer;

    .line 293
    return-object p0
.end method

.method public setMode(Lorg/acra/ReportingInteractionMode;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->q:Lorg/acra/ReportingInteractionMode;

    .line 309
    invoke-static {p0}, Lorg/acra/ACRA;->checkCrashResources(Lorg/acra/annotation/ReportsCrashes;)V

    .line 310
    return-object p0
.end method

.method public setReportDialogClass(Ljava/lang/Class;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/BaseCrashReportDialog;",
            ">;)",
            "Lorg/acra/ACRAConfiguration;"
        }
    .end annotation

    .prologue
    .line 327
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->s:Ljava/lang/Class;

    .line 328
    return-object p0
.end method

.method public setReportType(Lorg/acra/sender/HttpSender$Type;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->V:Lorg/acra/sender/HttpSender$Type;

    .line 666
    return-object p0
.end method

.method public setResDialogCommentPrompt(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->v:Ljava/lang/Integer;

    .line 344
    return-object p0
.end method

.method public setResDialogEmailPrompt(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 359
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->w:Ljava/lang/Integer;

    .line 360
    return-object p0
.end method

.method public setResDialogIcon(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->x:Ljava/lang/Integer;

    .line 375
    return-object p0
.end method

.method public setResDialogNegativeButtonText(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->u:Ljava/lang/Integer;

    .line 322
    return-object p0
.end method

.method public setResDialogOkToast(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 389
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->y:Ljava/lang/Integer;

    .line 390
    return-object p0
.end method

.method public setResDialogPositiveButtonText(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->t:Ljava/lang/Integer;

    .line 316
    return-object p0
.end method

.method public setResDialogText(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->z:Ljava/lang/Integer;

    .line 405
    return-object p0
.end method

.method public setResDialogTitle(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->A:Ljava/lang/Integer;

    .line 420
    return-object p0
.end method

.method public setResNotifIcon(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->B:Ljava/lang/Integer;

    .line 435
    return-object p0
.end method

.method public setResNotifText(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->C:Ljava/lang/Integer;

    .line 450
    return-object p0
.end method

.method public setResNotifTickerText(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->D:Ljava/lang/Integer;

    .line 466
    return-object p0
.end method

.method public setResNotifTitle(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->E:Ljava/lang/Integer;

    .line 481
    return-object p0
.end method

.method public setResToastText(I)Lorg/acra/ACRAConfiguration;
    .locals 1

    .prologue
    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->F:Ljava/lang/Integer;

    .line 496
    return-object p0
.end method

.method public setSendReportsAtShutdown(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->L:Ljava/lang/Boolean;

    .line 569
    return-object p0
.end method

.method public setSendReportsInDevMode(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->K:Ljava/lang/Boolean;

    .line 555
    return-object p0
.end method

.method public setSharedPreferenceMode(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->G:Ljava/lang/Integer;

    .line 507
    return-object p0
.end method

.method public setSharedPreferenceName(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->H:Ljava/lang/String;

    .line 518
    return-object p0
.end method

.method public setSocketTimeout(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->I:Ljava/lang/Integer;

    .line 529
    return-object p0
.end method

.method public sharedPreferencesMode()I
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->G:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->G:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1086
    :goto_0
    return v0

    .line 1082
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v0

    goto :goto_0

    .line 1086
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->H:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->H:Ljava/lang/String;

    .line 1099
    :goto_0
    return-object v0

    .line 1095
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1099
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public socketTimeout()I
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->I:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->I:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1112
    :goto_0
    return v0

    .line 1108
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->r:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->socketTimeout()I

    move-result v0

    goto :goto_0

    .line 1112
    :cond_1
    const/16 v0, 0x1388

    goto :goto_0
.end method
