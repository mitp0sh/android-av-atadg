.class public Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private AutoScan:Ljava/lang/Boolean;

.field private PeriodicScan:Ljava/lang/Boolean;

.field private ScanInterval:Ljava/lang/Integer;

.field private ScanOnCharging:Ljava/lang/Boolean;

.field private ScanOnLowBattery:Ljava/lang/Boolean;

.field private ScanType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getAutoScan()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->AutoScan:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPeriodicScan()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->PeriodicScan:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getScanInterval()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScanOnCharging()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanOnCharging:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getScanOnLowBattery()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanOnLowBattery:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getScanType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanType:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAutoScan(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->AutoScan:Ljava/lang/Boolean;

    .line 19
    return-void
.end method

.method public setPeriodicScan(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->PeriodicScan:Ljava/lang/Boolean;

    .line 32
    return-void
.end method

.method public setScanInterval(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanInterval:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method public setScanOnCharging(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanOnCharging:Ljava/lang/Boolean;

    .line 58
    return-void
.end method

.method public setScanOnLowBattery(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanOnLowBattery:Ljava/lang/Boolean;

    .line 45
    return-void
.end method

.method public setScanType(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanType:Ljava/lang/Integer;

    .line 84
    return-void
.end method

.method public withAutoScan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->AutoScan:Ljava/lang/Boolean;

    .line 27
    return-object p0
.end method

.method public withPeriodicScan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->PeriodicScan:Ljava/lang/Boolean;

    .line 40
    return-object p0
.end method

.method public withScanInterval(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanInterval:Ljava/lang/Integer;

    .line 79
    return-object p0
.end method

.method public withScanOnCharging(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanOnCharging:Ljava/lang/Boolean;

    .line 66
    return-object p0
.end method

.method public withScanOnLowBattery(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanOnLowBattery:Ljava/lang/Boolean;

    .line 53
    return-object p0
.end method

.method public withScanType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->ScanType:Ljava/lang/Integer;

    .line 92
    return-object p0
.end method
