.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$WlanEncryptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NONE:Ljava/lang/Integer;

.field public static final WEP:Ljava/lang/Integer;

.field public static final WPA:Ljava/lang/Integer;

.field public static final WPA_PSK:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$WlanEncryptions;->NONE:Ljava/lang/Integer;

    .line 11
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$WlanEncryptions;->WEP:Ljava/lang/Integer;

    .line 12
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$WlanEncryptions;->WPA:Ljava/lang/Integer;

    .line 13
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$WlanEncryptions;->WPA_PSK:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
