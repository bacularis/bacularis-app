
This is a new feature and bug fix release. We added full support for all
new Bacula 15.0 config directives. Apart from that we added to deploy API
host window a connection test button to check if connection parameters are
valid before starting deploy process. At the end we fixed bugs reported by
the Community.

We would like to take this opportunity to thank you all the Bacularis Community
for actively reporting to us new feature requests and bug reports.

## Main changes

**Bacularis Web**
 - Add new Bacula 15.0 directives support
 - Add connection test button to deploy API host function
 - Add SyncOnClose device directive support
 - Fix deploying Bacularis using ssh key without passphrase together with sudo option
 - Fix displaying API host list on Firefox

**Bacularis Common**
 - Fix support for apostrophe in data view name

## New directives and new directive values:
```
 - Director:
   = JobDefs
     > StorageGroupPolicy => FreeSpace, LastBackedUpTo, FreeSpaceLeastUsed
     > StorageGroupPolicyThreshold
     > CheckMalware
     > Runscript => RunsWhen => AtJobCompletion, Queued
   = Job
     > StorageGroupPolicy => FreeSpace, LastBackedUpTo, FreeSpaceLeastUsed
     > StorageGroupPolicyThreshold
     > CheckMalware
     > Runscript => RunsWhen => AtJobCompletion, Queued
   = Fileset
     > Include => Options => Compression => zstd, zstd1, zstd10, zstd19
   = Pool
     > StorageGroupPolicy => FreeSpace, LastBackedUpTo, FreeSpaceLeastUsed
     > StorageGroupPolicyThreshold
 - Storage:
   = Device
     > VolumeEncryption
     > SetVolumeAppendOnly
     > SetVolumeImmutable
     > SetVolumeReadOnly
     > MinimumVolumeProtectionTime
   = Cloud
     > Driver => Amazon
 - File Daemon
   = Director
     > AllowedBackupDirectories
     > ExcludedBackupDirectories
     > AllowedRestoreDirectories
     > AllowedScriptDirectories
```

## Changed directives from text box to multiple text box:
```
  - Director
    = Director
      > TlsAllowedCn
    = Client
      > TlsAllowedCn
    = Job
      > Run
    = Console
      > TlsAllowedCn
    = JobDefs
      > Run
  - Storage
    = Director
      > TlsAllowedCn
    = Storage
      > TlsAllowedCn
  - File Daemon
    = Director
      > DisableCommand
      > TlsAllowedCn
    = FileDaemon
      > DisableCommand
      > PkiSigner
      > PkiMasterKey
    = Console
      > TlsAllowedCn
```

## Removed directives:
```
  - Director
    = Pool
      > CopyPool
```

